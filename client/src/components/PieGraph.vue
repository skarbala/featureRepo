<script>
import { Doughnut } from "vue-chartjs";

export default {
  extends: Doughnut,
  props: ["data", "options"],

  mounted() {
    this.renderLineChart(this.chartData);
  },
  computed: {
    chartData: function () {
      return this.data;
    },
  },
  methods: {
    renderLineChart: function () {
      this.renderChart(
        {
          labels: ["Automated", "Not"],
          datasets: [
            {
              label: "Data One",
              backgroundColor: ["#00A991", "#BAC7D5"],
              data: this.chartData,
            },
          ],
        },
        { responsive: true, maintainAspectRatio: false }
      );
    },
  },
};
</script>