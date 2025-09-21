.class public abstract Lm1/n;
.super Lk1/n;
.source "com.google.android.gms:play-services-location@@20.0.0"

# interfaces
.implements Lm1/o;


# direct methods
.method public static c(Landroid/os/IBinder;)Lm1/o;
    .locals 2

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lm1/o;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lm1/o;

    return-object v0

    :cond_0
    new-instance v0, Lm1/m;

    invoke-direct {v0, p0}, Lm1/m;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lk1/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    .line 2
    invoke-interface {p0, p1}, Lm1/o;->k0(Lcom/google/android/gms/location/LocationAvailability;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lk1/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationResult;

    .line 4
    invoke-interface {p0, p1}, Lm1/o;->Y(Lcom/google/android/gms/location/LocationResult;)V

    :goto_0
    return p3
.end method
