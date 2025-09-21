.class public final Lcom/google/android/gms/location/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@20.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/b;->r(Landroid/os/Parcel;)I

    move-result p0

    .line 2
    sget-object v0, Lcom/google/android/gms/location/LocationResult;->b:Ljava/util/List;

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_1

    .line 4
    invoke-static {p1}, Lc1/b;->l(Landroid/os/Parcel;)I

    move-result v1

    .line 5
    invoke-static {v1}, Lc1/b;->i(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 6
    invoke-static {p1, v1}, Lc1/b;->q(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {p1, v1, v0}, Lc1/b;->g(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1, p0}, Lc1/b;->h(Landroid/os/Parcel;I)V

    new-instance p0, Lcom/google/android/gms/location/LocationResult;

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/location/LocationResult;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/location/LocationResult;

    return-object p0
.end method
