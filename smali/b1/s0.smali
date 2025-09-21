.class public final Lb1/s0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lb1/r;",
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
    .locals 8

    .line 1
    invoke-static {p1}, Lc1/b;->r(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_5

    .line 3
    invoke-static {p1}, Lc1/b;->l(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lc1/b;->i(I)I

    move-result v1

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4

    const/4 v7, 0x2

    if-eq v1, v7, :cond_3

    const/4 v7, 0x3

    if-eq v1, v7, :cond_2

    const/4 v7, 0x4

    if-eq v1, v7, :cond_1

    const/4 v7, 0x5

    if-eq v1, v7, :cond_0

    .line 4
    invoke-static {p1, v0}, Lc1/b;->q(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1, v0}, Lc1/b;->j(Landroid/os/Parcel;I)Z

    move-result v0

    move v4, v0

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {p1, v0}, Lc1/b;->j(Landroid/os/Parcel;I)Z

    move-result v0

    move v3, v0

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {p1, p0}, Lc1/b;->h(Landroid/os/Parcel;I)V

    new-instance p0, Lb1/r;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lb1/r;-><init>(IZZII)V

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lb1/r;

    return-object p0
.end method
