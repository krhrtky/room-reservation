<template>
  <v-menu
    ref="menu"
    :close-on-content-click="false"
    v-model="menu"
    :nudge-right="40"
    :return-value.sync="time"
    lazy
    transition="scale-transition"
    offset-y
    full-width
    max-width="290px"
    min-width="290px"
  >
    <v-text-field
      slot="activator"
      v-model="time"
      :label="label"
      prepend-icon="access_time"
      readonly
    />
    <v-time-picker
      v-model="time"
      :allowed-hours="allowedHours"
      :allowed-minutes="allowedMinutes"
      @change="$refs.menu.save(time)"
    />
  </v-menu>
</template>

<script>
export default {
  name: 'TimePicker',
  props: {
    label: {
      type: String,
      default: ''
    }
  },
  data: () => ({
    time: '',
    menu: false
  }),
  methods: {
    allowedHours: hour => 9 <= hour || hour >= 22,
    allowedMinutes: minutes => minutes === 0 || minutes % 15 === 0
  }
}
</script>
