defmodule BulmaAuthWeb.UserRegistrationView do
  use BulmaAuthWeb, :view

  alias SurfaceBulma.{Title, Form, Link}
  alias SurfaceBulma.Form.{EmailInput, PasswordInput, Submit}

  def render("new.html", assigns) do
    ~F"""
    <Title size="1">Register</Title>

    <Form for={@changeset} action="/users/register" method="POST" :let={form: f}>
      {#if @changeset.action}
        <article class="message is-medium is-danger">
          <p class="message-body">Oops, something went wrong! Please check the errors below.</p>
        </article>
      {/if}

      <!-- :email field -->
      <EmailInput
        form={f}
        field={:email}
        icon_left="envelope"
        opts={[required: true]}
        placeholder="Your e-mail address"
      />

      <!-- :password field -->
      <PasswordInput
        form={f}
        field={:password}
        icon_left="lock"
        opts={[required: true]}
        placeholder="Password must be at least 12 characters"
      />

      <Submit type="submit" color="primary">Register</Submit>
    </Form>

    <p>
      <Link href="/users/log_in">Log in</Link> |
      <Link href="/users/reset_password">Forgot your password?</Link>
    </p>
    """
  end
end
