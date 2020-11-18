<template>
  <div>
    <feature-list
      :name="'Booking features'"
      :features="features"
      :loaded="loaded"
    />
  </div>
</template>

<script>
import FeatureList from "../FeatureList.vue";

export default {
  name: "BookingFeature",
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
    const response = await this.$http.get("/booking");
    this.features = response.data;
    this.loaded = true;
  },
};
</script>

<style scoped lang="scss">
</style>