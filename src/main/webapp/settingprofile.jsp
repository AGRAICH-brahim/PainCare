<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>bs5 profile security page - Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/settingprofile.css">
</head>
<body>
<div class="container-xl px-4 mt-4">

<nav class="nav nav-borders">
<a class="nav-link active" href="" target="__blank">Security</a>
</nav>
<hr class="mt-0 mb-4">
<div class="row">
<div class="col-lg-8">

<div class="card mb-4">
<div class="card-header">Change Password</div>
<div class="card-body">
<form>

<div class="mb-3">
<label class="small mb-1" for="currentPassword">Current Password</label>
<input class="form-control" id="currentPassword" type="password" placeholder="Enter current password">
</div>

<div class="mb-3">
<label class="small mb-1" for="newPassword">New Password</label>
<input class="form-control" id="newPassword" type="password" placeholder="Enter new password">
</div>

<div class="mb-3">
<label class="small mb-1" for="confirmPassword">Confirm Password</label>
<input class="form-control" id="confirmPassword" type="password" placeholder="Confirm new password">
</div>
<button class="btn btn-primary" type="button" style="background:crimson;border:crimson;">Save</button>
</form>
</div>
</div>

<div class="card mb-4">
<div class="card-header">Security Preferences</div>
<div class="card-body">

<h5 class="mb-1">Account Privacy</h5>
<p class="small text-muted">By setting your account to private, your profile information and posts will not be visible to users outside of your user groups.</p>
<form>
<div class="form-check">
<input class="form-check-input" id="radioPrivacy1" type="radio" name="radioPrivacy" checked>
<label class="form-check-label" for="radioPrivacy1">Public (posts are available to all users)</label>
</div>
<div class="form-check">
<input class="form-check-input" id="radioPrivacy2" type="radio" name="radioPrivacy">
<label class="form-check-label" for="radioPrivacy2">Private (posts are available to only users in your groups)</label>
</div>
</form>
<hr class="my-4">

<h5 class="mb-1">Data Sharing</h5>
<p class="small text-muted">Sharing usage data can help us to improve our products and better serve our users as they navigation through our application. When you agree to share usage data with us, crash reports and usage analytics will be automatically sent to our development team for investigation.</p>
<form>
<div class="form-check">
<input class="form-check-input" id="radioUsage1" type="radio" name="radioUsage" checked>
<label class="form-check-label" for="radioUsage1">Yes, share data and crash reports with app developers</label>
</div>
<div class="form-check">
<input class="form-check-input" id="radioUsage2" type="radio" name="radioUsage">
<label class="form-check-label" for="radioUsage2">No, limit my data sharing with app developers</label>
</div>
</form>
</div>
</div>
</div>
<div class="col-lg-4">

<div class="card mb-4">
<div class="card-header">Two-Factor Authentication</div>
<div class="card-body">
<p>Add another level of security to your account by enabling two-factor authentication. We will send you a text message to verify your login attempts on unrecognized devices and browsers.</p>
<form>
<div class="form-check">
<input class="form-check-input" id="twoFactorOn" type="radio" name="twoFactor" checked>
<label class="form-check-label" for="twoFactorOn">On</label>
</div>
<div class="form-check">
<input class="form-check-input" id="twoFactorOff" type="radio" name="twoFactor">
<label class="form-check-label" for="twoFactorOff">Off</label>
</div>
<div class="mt-3">
<label class="small mb-1" for="twoFactorSMS">SMS Number</label>
<input class="form-control" id="twoFactorSMS" type="tel" placeholder="Enter a phone number" value="555-123-4567">
</div>
</form>
</div>
</div>

<div class="card mb-4">
<div class="card-header">Delete Account</div>
<div class="card-body">
<p>Deleting your account is a permanent action and cannot be undone. If you are sure you want to delete your account, select the button below.</p>
<button class="btn btn-danger-soft text-danger" type="button">I understand, delete my account</button>
</div>
</div>
</div>
</div>
</div>
<div class="container-xl px-4 mt-4">
    <!-- Account page navigation-->
    <nav class="nav nav-borders">

        <a class="nav-link active" href=""  target="__blank">Notifications</a>
    </nav>
    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="col-lg-8">
            <!-- Email notifications preferences card-->
            <div class="card card-header-actions mb-4">
                <div class="card-header">
                    Email Notifications
                    <div class="form-check form-switch">
                        <input class="form-check-input" id="flexSwitchCheckChecked" type="checkbox" checked="">
                        <label class="form-check-label" for="flexSwitchCheckChecked"></label>
                    </div>
                </div>
                <div class="card-body">
                    <form>
                        <!-- Form Group (default email)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputNotificationEmail">Default notification email</label>
                            <input class="form-control" id="inputNotificationEmail" type="email" value="name@example.com" disabled="">
                        </div>
                        <!-- Form Group (email updates checkboxes)-->
                        <div class="mb-0">
                            <label class="small mb-2">Choose which types of email updates you receive</label>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkAccountChanges" type="checkbox" checked="">
                                <label class="form-check-label" for="checkAccountChanges">Changes made to your account</label>
                            </div>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkAccountGroups" type="checkbox" checked="">
                                <label class="form-check-label" for="checkAccountGroups">Changes are made to groups you're part of</label>
                            </div>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkProductUpdates" type="checkbox" checked="">
                                <label class="form-check-label" for="checkProductUpdates">Product updates for products you've purchased or starred</label>
                            </div>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkProductNew" type="checkbox" checked="">
                                <label class="form-check-label" for="checkProductNew">Information on new products and services</label>
                            </div>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkPromotional" type="checkbox">
                                <label class="form-check-label" for="checkPromotional">Marketing and promotional offers</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" id="checkSecurity" type="checkbox" checked="" disabled="">
                                <label class="form-check-label" for="checkSecurity">Security alerts</label>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- SMS push notifications card-->
            <div class="card card-header-actions mb-4">
                <div class="card-header">
                    Push Notifications
                    <div class="form-check form-switch">
                        <input class="form-check-input" id="smsToggleSwitch" type="checkbox" checked="">
                        <label class="form-check-label" for="smsToggleSwitch"></label>
                    </div>
                </div>
                <div class="card-body">
                    <form>
                        <!-- Form Group (default SMS number)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputNotificationSms">Default SMS number</label>
                            <input class="form-control" id="inputNotificationSms" type="tel" value="123-456-7890" disabled="">
                        </div>
                        <!-- Form Group (SMS updates checkboxes)-->
                        <div class="mb-0">
                            <label class="small mb-2">Choose which types of push notifications you receive</label>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkSmsComment" type="checkbox" checked="">
                                <label class="form-check-label" for="checkSmsComment">Someone comments on your post</label>
                            </div>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkSmsShare" type="checkbox">
                                <label class="form-check-label" for="checkSmsShare">Someone shares your post</label>
                            </div>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkSmsFollow" type="checkbox" checked="">
                                <label class="form-check-label" for="checkSmsFollow">A user follows your account</label>
                            </div>
                            <div class="form-check mb-2">
                                <input class="form-check-input" id="checkSmsGroup" type="checkbox">
                                <label class="form-check-label" for="checkSmsGroup">New posts are made in groups you're part of</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" id="checkSmsPrivateMessage" type="checkbox" checked="">
                                <label class="form-check-label" for="checkSmsPrivateMessage">You receive a private message</label>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <!-- Notifications preferences card-->
            <div class="card">
                <div class="card-header">Notification Preferences</div>
                <div class="card-body">
                    <form>
                        <!-- Form Group (notification preference checkboxes)-->
                        <div class="form-check mb-2">
                            <input class="form-check-input" id="checkAutoGroup" type="checkbox" checked="">
                            <label class="form-check-label" for="checkAutoGroup">Automatically subscribe to group notifications</label>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" id="checkAutoProduct" type="checkbox">
                            <label class="form-check-label" for="checkAutoProduct">Automatically subscribe to new product notifications</label>
                        </div>
                        <!-- Submit button-->
                        <button class="btn btn-danger-soft text-danger">Unsubscribe from all notifications</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>