.class public Lm1/k;
.super Lk1/n;
.source "com.google.android.gms:play-services-location@@20.0.0"

# interfaces
.implements Lm1/l;


# direct methods
.method public static c(Landroid/os/IBinder;)Lm1/l;
    .locals 2

    const-string v0, "com.google.android.gms.location.IDeviceOrientationListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lm1/l;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lm1/l;

    return-object v0

    :cond_0
    new-instance v0, Lm1/j;

    invoke-direct {v0, p0}, Lm1/j;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
