defmodule BulmaAuthWeb.UserConfirmationView do
  use BulmaAuthWeb, :view

  alias SurfaceBulma.{Title, Form, Link}
  alias SurfaceBulma.Form.{EmailInput, Submit}

  def render("edit.html", assigns) do
    ~F"""
    <Title size="1">Confirm account</Title>

    <Form for={:user} action={"/users/confirm/#{@token}"} method="POST" :let={form: _f}>
      <Submit type="submit" color="primary">Confirm my account</Submit>
    </Form>

    <p>
      <Link href="/users/register">Register</Link> |
      <Link href="/users/log_in">Log in</Link>
    </p>
    """
  end

  def render("new.html", assigns) do
    ~F"""
    <Title size="1">Resend confirmation instructions</Title>

    <Form for={:user} action="/users/confirm/" method="POST" :let={form: f}>

      <!-- :email field -->
      <EmailInput form={f} field={:email} icon_left="envelope" opts={[required: true]} placeholder="Your e-mail address"/>

      <Submit type="submit" color="primary">Confirm my account</Submit>
    </Form>

    <p>
      <Link href="/users/register">Register</Link> |
      <Link href="/users/log_in">Log in</Link>
    </p>
    """
  end
end
