<template>
  <v-flex
    xs12
    sm6
    d-flex>
    <v-select
      v-model="select"
      :items="hours"
      :rules="[v => !!v || 'Hour is required']"
      label="Hour"
      required
    />

    <v-spacer/>

    <v-select
      v-model="select"
      :items="minutes"
      :rules="[v => !!v || 'Minutes is required']"
      label="Minutes"
      required
    />
  </v-flex>
</template>

<script>
export default {
  name: 'TimeSelector',
  data: () => ({
    hours: [9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22],
    minutes: ['00', '15', '30', '45']
  })
}
</script>
