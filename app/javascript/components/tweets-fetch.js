const refreshTweetBtn = document.querySelector("#refresh-tweet");
const list = document.querySelector(".tweets-list");
const url = `/keywords/${refreshTweetBtn.dataset.id}/refresh_tweet`;

const getTweet = () => {
  refreshTweetBtn.addEventListener('click', (event) => {
    console.log(event);
    fetch(url, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        list.insertAdjacentHTML("beforebegin",
                               `<ul><li>${data.tweets[0].content}</li>
                               <li>${data.tweets[1].content}</li>
                               <li>${data.tweets[2].content}</li></ul>`);;
      });
  });
}

export { getTweet }
