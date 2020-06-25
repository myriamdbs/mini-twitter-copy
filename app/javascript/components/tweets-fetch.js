const refreshTweetBtn = document.querySelector("#refresh-tweet");

const getTweet = () => {
  refreshTweetBtn.addEventListener('click', (event) => {
    fetch("/keywords/6/tweets")
}

export { getTweet }
