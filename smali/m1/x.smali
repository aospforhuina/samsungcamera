.class public final Lm1/x;
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

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    move-wide v6, v0

    move-wide v8, v6

    move v4, v2

    move v5, v4

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_4

    .line 3
    invoke-static {p1}, Lc1/b;->l(Landroid/os/Parcel;)I

    move-result v0

    .line 4
    invoke-static {v0}, Lc1/b;->i(I)I

    move-result v1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 5
    invoke-static {p1, v0}, Lc1/b;->q(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, v0}, Lc1/b;->o(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1, v0}, Lc1/b;->o(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p1, v0}, Lc1/b;->n(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {p1, p0}, Lc1/b;->h(Landroid/os/Parcel;I)V

    .line 11
    new-instance p0, Lm1/w;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lm1/w;-><init>(IIJJ)V

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lm1/w;

    return-object p0
.end method
