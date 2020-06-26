const refreshTweetBtn = document.querySelector("#refresh-tweet");
console.log(refreshTweetBtn);
const list = document.querySelector(".tweets-list");

const getTweet = () => {
  refreshTweetBtn.addEventListener('click', (event) => {
    fetch(`/keywords/${refreshTweetBtn.dataset.id}/refresh_tweet`);
    list.insertAdjacentHTML("beforebegin", `<ul><li>${list.dataset.content}</li></ul>`);
  });
};

export { getTweet }
