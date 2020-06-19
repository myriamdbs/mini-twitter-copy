const getTweetBtn = document.querySelector("#tweet");

const getTweet = () => {
  getTweetBtn.addEventListener("click", (event) => {
    fetch(`https://api.twitter.com/1.1/search/tweets.json?q=%23elections`)
      .then(response => response.json())
      .then((data) => {
        console.log(data);
      });
  });
}

export { getTweet }
