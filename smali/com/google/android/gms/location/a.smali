.class public final Lcom/google/android/gms/location/a;
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
    .locals 14

    .line 1
    invoke-static {p1}, Lc1/b;->r(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v8, v0

    move v9, v8

    move v7, v1

    move-wide v10, v2

    move-object v12, v4

    move v13, v5

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_0

    .line 3
    invoke-static {p1}, Lc1/b;->l(Landroid/os/Parcel;)I

    move-result v0

    .line 4
    invoke-static {v0}, Lc1/b;->i(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5
    invoke-static {p1, v0}, Lc1/b;->q(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-static {p1, v0}, Lc1/b;->j(Landroid/os/Parcel;I)Z

    move-result v0

    move v13, v0

    goto :goto_0

    .line 7
    :pswitch_1
    sget-object v1, Lm1/w;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v0, v1}, Lc1/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm1/w;

    move-object v12, v0

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-static {p1, v0}, Lc1/b;->o(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v10, v0

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v0

    move v9, v0

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v0

    move v8, v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, p0}, Lc1/b;->h(Landroid/os/Parcel;I)V

    .line 14
    new-instance p0, Lcom/google/android/gms/location/LocationAvailability;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/location/LocationAvailability;-><init>(IIIJ[Lm1/w;Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/location/LocationAvailability;

    return-object p0
.end method
