.class public final Lb1/b1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lb1/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Lc1/b;->r(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move v5, v4

    move v7, v5

    move-object v3, v1

    move-object v6, v3

    move-object v8, v6

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_0

    .line 3
    invoke-static {p1}, Lc1/b;->l(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lc1/b;->i(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4
    invoke-static {p1, v0}, Lc1/b;->q(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {p1, v0}, Lc1/b;->b(Landroid/os/Parcel;I)[I

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {p1, v0}, Lc1/b;->b(Landroid/os/Parcel;I)[I

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-static {p1, v0}, Lc1/b;->j(Landroid/os/Parcel;I)Z

    move-result v0

    move v5, v0

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-static {p1, v0}, Lc1/b;->j(Landroid/os/Parcel;I)Z

    move-result v0

    move v4, v0

    goto :goto_0

    :pswitch_5
    sget-object v1, Lb1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v0, v1}, Lc1/b;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lb1/r;

    move-object v3, v0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1, p0}, Lc1/b;->h(Landroid/os/Parcel;I)V

    new-instance p0, Lb1/f;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lb1/f;-><init>(Lb1/r;ZZ[II[I)V

    return-object p0

    nop

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

    new-array p0, p1, [Lb1/f;

    return-object p0
.end method
