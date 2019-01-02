<template>
  <v-layout>
    <v-flex>
      <v-card>
        <v-card-title primary-title>
          <div class="headline">Reserve</div>
        </v-card-title>
        <v-stepper v-model="e1">
          <v-stepper-header>
            <v-stepper-step
              :complete="e1 > 1"
              step="1">Input
            </v-stepper-step>

            <v-divider/>

            <v-stepper-step
              :complete="e1 > 2"
              step="2">Confirm</v-stepper-step>

            <v-divider/>

            <v-stepper-step step="3">Result</v-stepper-step>
          </v-stepper-header>

          <v-stepper-items>
            <v-stepper-content step="1">
              <reserve-form/>

              <v-btn
                color="primary"
                @click="e1 = 2"
              >
                Continue
              </v-btn>

              <v-btn flat>Cancel</v-btn>
            </v-stepper-content>

            <v-stepper-content step="2">
              <v-card
                class="mb-5"
                color="grey lighten-1"
                height="200px"
              />

              <v-btn
                color="primary"
                @click="e1 = 3"
              >
                Continue
              </v-btn>

              <v-btn flat>Cancel</v-btn>
            </v-stepper-content>

            <v-stepper-content step="3">
              <v-card
                class="mb-5"
                color="grey lighten-1"
                height="200px"
              />

              <v-btn
                color="primary"
                @click="e1 = 1"
              >
                Continue
              </v-btn>

              <v-btn flat>Cancel</v-btn>
            </v-stepper-content>
          </v-stepper-items>
        </v-stepper>

      </v-card>
    </v-flex>
  </v-layout>

</template>

<script>
import ReserveForm from '../components/ReserveForm'

export default {
  name: 'Reservation',
  components: {
    ReserveForm
  },
  data() {
    return {
      e1: 0
    }
  }
}
</script>
