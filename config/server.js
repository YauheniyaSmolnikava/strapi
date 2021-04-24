module.exports = ({ env }) => ({
  host: "${process.env.HOST}",
  port: "$(process.env.PORT || 80)"
});
