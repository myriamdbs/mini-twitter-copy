const getTweet = () => {
  const refreshTweetBtn = document.querySelector("#refresh-tweet");
  const list = document.querySelector(".tweets-list");
  if (refreshTweetBtn) {
    refreshTweetBtn.addEventListener('click', (event) => {
      const url = `/keywords/${refreshTweetBtn.dataset.id}/refresh_tweet`;
      fetch(url, { headers: { accept: "application/json" } })
        .then(response => response.json())
        .then((data) => {
          console.log(data);
          list.insertAdjacentHTML("afterbegin",
                                 `<ul><li>${data.tweets[0].content}</li>
                                 <li>${data.tweets[1].content}</li>
                                 <li>${data.tweets[2].content}</li></ul>`);;
        });
    });
  }
}

export { getTweet }
