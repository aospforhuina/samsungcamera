.class public final Lm1/u;
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
    .locals 5

    .line 1
    invoke-static {p1}, Lc1/b;->r(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_2

    .line 3
    invoke-static {p1}, Lc1/b;->l(Landroid/os/Parcel;)I

    move-result v2

    .line 4
    invoke-static {v2}, Lc1/b;->i(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 5
    invoke-static {p1, v2}, Lc1/b;->q(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lm1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {p1, v2, v1}, Lc1/b;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lm1/g;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p1, v2, v0}, Lc1/b;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p1, p0}, Lc1/b;->h(Landroid/os/Parcel;I)V

    .line 11
    new-instance p0, Lm1/f;

    invoke-direct {p0, v0, v1}, Lm1/f;-><init>(Lcom/google/android/gms/common/api/Status;Lm1/g;)V

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lm1/f;

    return-object p0
.end method
