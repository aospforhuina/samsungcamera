.class public final Lk1/v;
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
    .locals 10

    .line 1
    invoke-static {p1}, Lc1/b;->r(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move v3, v1

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
    :pswitch_0
    invoke-static {p1, v0}, Lc1/b;->q(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {p1, v0}, Lc1/b;->d(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {p1, v0}, Lc1/b;->m(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-static {p1, v0}, Lc1/b;->m(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :pswitch_4
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p1, v0, v1}, Lc1/b;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v7, v0

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-static {p1, v0}, Lc1/b;->m(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 11
    :pswitch_6
    sget-object v1, Lk1/s;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {p1, v0, v1}, Lc1/b;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lk1/s;

    move-object v4, v0

    goto :goto_0

    .line 13
    :pswitch_7
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p0}, Lc1/b;->h(Landroid/os/Parcel;I)V

    .line 15
    new-instance p0, Lk1/u;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lk1/u;-><init>(ILk1/s;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lk1/u;

    return-object p0
.end method
