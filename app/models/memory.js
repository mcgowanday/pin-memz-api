const mongoose = require('mongoose')

const memorySchema = new mongoose.Schema({
  title: {
    type: String,
    required: true
  },
  date: {
    type: Date,
    required: true
  },
  location: {
    type: String,
    required: true
  },
  category: {
    type: String
  },
  party: {
    type: [String]
  },
  enjoyed: {
    type: Boolean
  },
  starred: {
    type: Boolean
  },
  notes: {
    type: String
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Memory', memorySchema)
