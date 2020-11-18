<template>
  <div>
    <feature-list
      :name="'Search features'"
      :features="features"
      :loaded="loaded"
      v-on:clickedOnScenario="clicked"
      v-on:selectFeature="selectFeature"
    />
    <scenario-detail :scenario="selectedScenario" />
    <feature-modal
      :feature="selectedFeature"
      v-show="showModal"
      @close="closeModal"
    />
  </div>
</template>

<script>
import FeatureList from "../components/FeatureList.vue";
import ScenarioDetail from "../components/ScenarioDetail.vue";
import FeatureModal from "../components/FeatureModal.vue";

export default {
  name: "SearchFeature",
  components: {
    FeatureList,
    ScenarioDetail,
    FeatureModal,
  },
  data() {
    return {
      features: [],
      loaded: false,
      selectedScenario: "",
      selectedFeature: "",
      showModal: false,
    };
  },
  methods: {
    clicked: function (scenario) {
      this.selectedScenario = scenario;
    },
    selectFeature: function (feature) {
      this.selectedFeature = feature;
      this.showModal = true;
    },
    closeModal: function () {
      this.showModal = false;
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
