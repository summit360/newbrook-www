function calculateDaysBetweenDates(begin, end) {
    var beginDate = new Date(begin);
    var endDate = new Date(end);
    var daysBetween = Math.round((endDate - beginDate) / (24 * 60 * 60 * 1000));
    return daysBetween;
}
