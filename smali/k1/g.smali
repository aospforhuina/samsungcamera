.class public abstract Lk1/g;
.super Lk1/n;
.source "com.google.android.gms:play-services-location@@20.0.0"

# interfaces
.implements Lk1/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.ISettingsCallbacks"

    invoke-direct {p0, v0}, Lk1/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lm1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lk1/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lm1/f;

    .line 2
    invoke-interface {p0, p1}, Lk1/h;->l0(Lm1/f;)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
