<template>
  <div class="modal-mask">
    <div class="modal-wrapper">
      <div class="modal-container">
        <div class="modal-header">
          <h2 name="header">{{ feature.name }}</h2>
        </div>
        <div class="modal-body">
          <p>{{ feature.description }}</p>
          <ul class="scenarios">
            <li
              class="scenario"
              v-for="scenario in feature.children"
              :key="scenario.id"
            >
              <div>
                <ul class="tags">
                  <li v-for="tag in scenario.tags" :key="tag.id">
                    {{ tag }}
                  </li>
                </ul>
              </div>
              <div>
                <h3>{{ scenario.name }}</h3>
              </div>

              <ul class="steps">
                <li v-for="step in scenario.steps" :key="step.id">
                  <p>
                    <span>{{ step.keyword }}</span
                    >{{ step.text }}
                  </p>
                </li>
              </ul>
            </li>
          </ul>
        </div>

        <div class="modal-footer">
          <slot name="footer">
            <button class="modal-default-button btn-block btn" @click="close">
              Close
            </button>
          </slot>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "FeatureModal",
  props: ["feature"],
  methods: {
    close() {
      this.$emit("close");
    },
  },
};
</script>

<style scoped lang="scss" >
.modal-mask {
  position: fixed;
  z-index: 9998;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.7);
  display: table;
  transition: opacity 0.9s ease;
}
.modal-wrapper {
  display: table-cell;
  vertical-align: middle;
}
.modal-container {
  text-align: left;
  width: 900px;
  margin: 0 auto;
  padding: 20px 30px;
  background-color: #fff;
  border-radius: 2px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.33);
  transition: all 0.2s ease-in-out;
  font-family: Helvetica, Arial, sans-serif;
}
.modal-header h2 {
  margin: 0 auto;
  font-size: 1.5em;
}
.modal-body {
  margin: 20px 0;
}

.modal-enter {
  opacity: 0;
}
.modal-leave-active {
  opacity: 0;
}
.modal-default-button {
  border-radius: 3px;
  color: #fff;
  border: none;
  padding: 10px;
  font-weight: 700;
  background-color: #42b983;
}
.modal-enter .modal-container,
.modal-leave-active .modal-container {
  -webkit-transform: scale(1.5);
  transform: scale(1.5);
}
.modal-body {
  ul {
    padding: 0px;
  }
}

.scenarios {
  li.scenario {
    float: none;
    margin: 5px;
    h3 {
      margin: 0;
      font-size: 1em;
      text-align: left;
      clear: both;
    }
    p {
      margin: 0;
    }
  }
  span {
    color: #005c4e;
    font-weight: 700;
  }
  .steps {
    li {
      float: none;
    }
  }
  .tags {
    li {
      float: left;
      background-color: #e8edf1;
      border-radius: 20px;
      padding: 5px 10px;
      font-size: 0.6em;
      margin: 5px;
      color: #5f738c;
    }
  }
}
.modal-default-button:active,
.modal-default-button:focus {
  outline: none;
  border: none;
  box-shadow: none;
}
</style>
