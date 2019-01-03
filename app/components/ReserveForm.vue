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

    <v-flex
      xs12
      sm6
      d-flex>
      <date-picker/>
      <time-picker label="Start Time"/>
      <time-picker label="End Time"/>
    </v-flex>
  </v-form>
</template>

<script>
import DatePicker from './common/DatePicker'
import TimePicker from './common/TimePicker'

export default {
  name: 'ReserveForm',
  components: {
    TimePicker,
    DatePicker
  },
  data: () => ({
    valid: true,
    startTime: '',
    endTime: '',
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
