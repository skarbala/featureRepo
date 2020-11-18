<template>
  <div class="scenario-container">
    <h4>{{ scenario.name }}</h4>
    <ul>
      <li v-for="steps in scenario.steps" :key="steps.id">
        <p>
          <span>{{ steps.keyword }} </span>{{ steps.text }}
        </p>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  name: "ScenarioModal",
  props: ["scenario"],
};
</script>

<style scoped lang="scss" >
div.scenario-container {
  text-align: left;
  margin: 0 50px;
  width: 500px;
  ul {
    list-style: none;
    li {
      display: block;
      margin: 0;
      float: none;
      span {
        color: #005c4e;
        font-weight: 700;
      }
      p {
        margin: 0;
      }
    }
  }
}
</style>
