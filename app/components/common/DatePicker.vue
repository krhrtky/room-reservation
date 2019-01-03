<template>
  <v-menu
    :close-on-content-click="false"
    v-model="menu"
    :nudge-right="40"
    lazy
    transition="scale-transition"
    offset-y
    full-width
    min-width="290px"
  >
    <v-text-field
      slot="activator"
      v-model="date"
      label="Date"
      prepend-icon="event"
      readonly
    />
    <v-date-picker
      v-model="date"
      @input="menu = false"/>
  </v-menu>
</template>

<script>
export default {
  name: 'DatePicker',
  data: () => ({
    date: '',
    menu: false
  })
}
</script>
