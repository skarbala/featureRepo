<template>
  <div>
    <feature-list
      class="feature-list"
      :name="'Search features'"
      :features="features"
      :loaded="loaded"
      v-on:clickedOnScenario="clicked"
    />
    <scenario-detail :scenario="selectedScenario" />
  </div>
</template>

<script>
import FeatureList from "../FeatureList.vue";
import ScenarioDetail from "../ScenarioDetail.vue";

export default {
  name: "SearchFeature",
  components: {
    FeatureList,
    ScenarioDetail,
  },
  data() {
    return {
      features: [],
      loaded: false,
      selectedScenario: "",
    };
  },
  methods: {
    clicked: function (scenario) {
      this.selectedScenario = scenario;
    },
  },
  async mounted() {
    const response = await this.$http.get("/search");
    this.features = response.data;
    this.loaded = true;
  },
};
</script>

<style scoped lang="scss">
</style>
