<template>
  <div>
    <feature-list
      :name="'MMB features'"
      :features="features"
      :loaded="loaded"
    />
  </div>
</template>

<script>
import FeatureList from "../components/FeatureList.vue";

export default {
  name: "MMBFeature",
  components: {
    FeatureList,
  },
  data() {
    return {
      features: [],
      loaded: false,
    };
  },

  async mounted() {
    const response = await this.$http.get("/mmb");
    this.features = response.data;
    this.loaded = true;
  },
};
</script>

<style scoped lang="scss">
</style>