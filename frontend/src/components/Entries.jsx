import { useEffect, useState } from "react";
import axios from "axios";
import { Card, Typography, Box, Select, MenuItem } from "@mui/material";
import { useNavigate, useParams } from "react-router-dom";
import { ThemeProvider } from "@mui/material/styles";
import montserrat from "../static/theme";
import Navbar from "./Navbar";
import BackButton from "./BackButton";
import EntryInfo from "./EntryInfo";
import EntryScore from "./EntryScore";
import ConfirmationWindow from "./ConfirmationWindow";

export default function Entries() {
  const [entries, setEntries] = useState([]);
  const [contest, setContest] = useState({});
  const [openPopUp, setOpenPopUp] = useState(false);
  const [reviewDeleteErrorMessage, setReviewDeleteErrorMessage] = useState("");

  const [maxScore, setMaxScore] = useState(10);
  const [sortOrder, setSortOrder] = useState("asc");
  const navigate = useNavigate();
  const { contestId } = useParams();

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_API_URL}api/entries/?contest=${contestId}`, {
        headers: {
          "Content-Type": "application/json",
          Authorization: "Token " + sessionStorage.getItem("accessToken"),
        },
      })
      .then((response) => {
        const sortedEntries = response.data.sort((a, b) =>
          sortOrder === "asc" ? a.score - b.score : b.score - a.score,
        );
        setEntries(sortedEntries);
      })
      .catch((error) => console.error("Error fetching data: ", error));

    axios
      .get(`${import.meta.env.VITE_API_URL}api/contests/${contestId}/`, {
        headers: {
          "Content-Type": "application/json",
          Authorization: "Token " + sessionStorage.getItem("accessToken"),
        },
      })
      .then((response) => setContest(response.data))
      .catch((error) => console.error("Error fetching data: ", error));

    axios
      .get(
        `${import.meta.env.VITE_API_URL
        }api/contests/${contestId}/max_rating_sum/`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: "Token " + sessionStorage.getItem("accessToken"),
          },
        },
      )
      .then((response) => {
        setMaxScore(response.data.total_max_rating);
      })
      .catch((error) => console.error("Error fetching max score: ", error));
  }, [contestId, sortOrder]);

  const handleSortChange = (event) => {
    setSortOrder(event.target.value);
  };

  const handleBackClick = () => {
    navigate("/");
  };

  const handleDeleteClick = (id) => {
    axios
      .delete(`${import.meta.env.VITE_API_URL}api/entries/${id}/`, {
        headers: {
          "Content-Type": "application/json",
          Authorization: "Token " + sessionStorage.getItem("accessToken"),
        },
      })
      .then(() => {
        setEntries(entries.filter((entry) => entry.id !== id));
      })
      .catch((error) => {
        console.log(error);
        setReviewDeleteErrorMessage(
          JSON.stringify(error.response.data, null, 2),
        );
      });
    setOpenPopUp(true);
  };
  return (
    <ThemeProvider theme={montserrat}>
      <Navbar />
      <Box
        sx={{
          px: 4,
          maxWidth: "7xl",
          mx: "auto",
          "& .MuiCard-root": { maxWidth: "700px", mb: 2, mx: "auto" },
        }}
      >
        <Box sx={{ textAlign: "center", my: 2, mx: "auto" }}>
          <Typography
            style={{ fontWeight: "bold", marginTop: "20px" }}
            variant="h4"
            component="h1"
          >
            Prace konkursowe: {contest.title}
          </Typography>
          <Select value={sortOrder} onChange={handleSortChange} sx={{ mt: 2 }}>
            <MenuItem value={"asc"}>
              Od nieocenionych/najniżej ocenionych
            </MenuItem>
            <MenuItem value={"desc"}>Od najwyżej ocenionych</MenuItem>
          </Select>
        </Box>
        <BackButton clickHandler={handleBackClick} />
        {entries.map((entry) => {
          console.log(entry.score, maxScore);
          const badgeColor = getBadgeColor(entry.score, maxScore);
          return (
            <Card
              key={entry.id}
              sx={{
                p: 4,
                display: "flex",
                justifyContent: "space-between",
                alignItems: "center",
                mb: 2,
                maxWidth: "50%",
                boxShadow: "0 0 3px 1px #95C21E",
              }}
            >
              <EntryInfo
                id={entry.id}
                title={entry.entry_title}
                name={entry.contestants}
                surname={entry.contestants}
                age="12"
                school="Szkoła Podstawowa nr 1 w Głogowie"
                onDeleteClick={handleDeleteClick}
              />
              <EntryScore badgeColor={badgeColor} score={entry.score} />
            </Card>
          );
        })}
      </Box>
      <ConfirmationWindow
        open={openPopUp}
        setOpen={setOpenPopUp}
        title={
          reviewDeleteErrorMessage
            ? "Usuwanie zgłoszenia nieudane"
            : "Pomyślnie usunięto zgłoszenie"
        }
        message={reviewDeleteErrorMessage || null}
        onConfirm={() => setOpenPopUp(false)}
        showCancelButton={false}
      />
    </ThemeProvider>
  );
}

function getBadgeColor(score, maxScore) {
  if (score === null || score === undefined) {
    return "grey";
  } else if (score < 0.5 * maxScore) {
    return "red";
  } else if (score < 0.9 * maxScore) {
    return "yellow";
  } else {
    return "green";
  }
}
