<template>
  <div>
    <h1>{{ name }}</h1>

    <h1 class="loading-message" v-if="!loaded">Getting data from repo...</h1>
    <ul>
      <li class="feature" v-for="feature in features" :key="feature.id">
        <h4 @click="clickedOnFeature(feature)">{{ feature.name }}</h4>
        <div class="scenario-container">
          <p>Scenarios: {{ feature.children.length }}</p>

          <ul class="scenarios">
            <li
              v-for="scenario in feature.children"
              :key="scenario.id"
              @click="clickedOnScenario(scenario)"
            >
              <p class="scenario-name">{{ scenario.name }}</p>
            </li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  name: "FeatureList",
  props: ["name", "features", "loaded"],
  data: function () {
    return {
      smoke: false,
      autoweb: false,
    };
  },
  methods: {
    clickedOnScenario: function (scenario) {
      this.$emit("clickedOnScenario", scenario);
    },
    clickedOnFeature: function (feature) {
      this.$emit("selectFeature", feature);
    },
  },
};
</script>

<style scoped lang="scss" >
div.scenario-container {
  padding: 10px;
}
h1 {
  text-align: center;
  margin: 0;
}
ul {
  list-style-type: none;
  padding: 0;
  ul.scenarios {
    li {
      float: none;
      margin: 0;
      cursor: pointer;
      &:hover {
        color: #005c4e;
      }
    }
  }
  li.feature {
    text-align: left;
    display: inline-block;
    margin: 5px 5px;
    background-color: #fff;
    border-radius: 5px;
    h4 {
      font-size: 0.9em;
      background-color: #42b983;
      padding: 5px 10px;
      color: white;
      border-radius: 5px 5px 0 0;
      cursor: pointer;
    }
    a {
      font-size: 0.7em;
      color: #42b983;
      display: block;
      &:hover {
        color: #005c4e;
      }
    }
    p {
      font-size: 0.7em;
    }
    h4 {
      margin: 0;
    }
  }
}
h1.loading-message {
  margin: 150px 0;
  color: #bac7d5;
}

p.scenario-name {
  font-size: 0.4em;
}
</style>
