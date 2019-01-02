<template>
  <v-form
    ref="form"
    v-model="valid"
    lazy-validation
  >
    <v-text-field
      v-model="name"
      :rules="nameRules"
      label="Name"
      required
    />

    <v-text-field
      v-model="email"
      :rules="emailRules"
      label="E-mail"
      required
    />

    <v-select
      v-model="select"
      :items="Rooms"
      :rules="[v => !!v || 'Item is required']"
      label="Room"
      required
    />

    <date-picker/>
    <h3>Start Time</h3>
    <time-selector/>
    <h3>End Time</h3>
    <time-selector/>
  </v-form>
</template>

<script>
import DatePicker from './common/DatePicker'
import TimeSelector from './common/TimeSelector'

export default {
  name: 'ReserveForm',
  components: {
    TimeSelector,
    DatePicker
  },
  data: () => ({
    valid: true,
    name: '',
    nameRules: [
      v => !!v || 'Name is required',
      v => (v && v.length <= 10) || 'Name must be less than 10 characters'
    ],
    email: '',
    emailRules: [
      v => !!v || 'E-mail is required',
      v => /.+@.+/.test(v) || 'E-mail must be valid'
    ],
    select: null,
    Rooms: ['Earth', 'Moon', 'River', 'Star']
  }),

  methods: {
    validate() {
      if (this.$refs.form.validate()) {
        this.snackbar = true
      }
    },
    reset() {
      this.$refs.form.reset()
    },
    resetValidation() {
      this.$refs.form.resetValidation()
    }
  }
}
</script>
