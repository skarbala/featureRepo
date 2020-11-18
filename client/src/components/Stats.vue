<template>
  <div class="hello">
    <h1>Managerial statistics</h1>
    <h1 class="loading-message" v-if="!loaded">
      Calculating data from Testrail...
    </h1>
    <div class="charts" v-if="loaded">
      <h4>
        Total scenario count <span>{{ responseData.total }}</span>
      </h4>
      <div class="chart">
        <h3>Automated frontend</h3>
        <pie-graph :data="frontendChartData" v-if="loaded"></pie-graph>
      </div>
      <div class="chart">
        <h3>Automated iOS</h3>
        <pie-graph :data="iosChartData" v-if="loaded"></pie-graph>
      </div>
      <div class="chart">
        <h3>Automated Android</h3>
        <pie-graph :data="androidChartData" v-if="loaded"></pie-graph>
      </div>
    </div>
  </div>
</template>

<script>
import PieGraph from "../components/PieGraph.vue";
export default {
  name: "Stats",
  components: {
    PieGraph,
  },

  data() {
    return {
      frontendChartData: [],
      iosChartData: [],
      androidChartData: [],
      loaded: false,
      responseData: "",
    };
  },
  async mounted() {
    const response = await this.$http.get("/stats");
    this.responseData = response.data;
    this.frontendChartData.push(this.responseData.automated_fe);
    this.frontendChartData.push(
      this.responseData.total - this.responseData.automated_fe
    );
    this.iosChartData.push(this.responseData.automated_ios);
    this.iosChartData.push(
      this.responseData.total - this.responseData.automated_ios
    );

    this.androidChartData.push(this.responseData.automated_android);
    this.androidChartData.push(
      this.responseData.total - this.responseData.automated_android
    );

    this.loaded = true;
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
div.chart {
  float: left;
  margin: 0 60px;
  width: 250px;
}
h1 {
  text-align: center;
  margin: 0;
}
h1.loading-message {
  margin: 150px 0;
  color: #bac7d5;
}
h3 {
  margin: 10px 0;
  color: #5f738c;

  text-align: center;
}
h4 {
  color: #5f738c;
  span {
    color: #00a991;
  }
}
</style>
