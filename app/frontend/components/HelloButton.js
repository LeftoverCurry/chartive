import React from "react";
import PropTypes from "prop-types";
import Button from "react-bootstrap/Button";

class HelloButton extends React.Component {
  render() {
    return (
      <React.Fragment>
        <Button>{this.props.text}</Button>
      </React.Fragment>
    );
  }
}

HelloButton.propTypes = {
  text: PropTypes.string,
};
export default HelloButton;
