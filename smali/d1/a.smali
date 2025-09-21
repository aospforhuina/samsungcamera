.class public final Ld1/a;
.super Li1/a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-direct {p0, p1, v0}, Li1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final N0(Lb1/s;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li1/a;->c()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Li1/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Li1/a;->M0(ILandroid/os/Parcel;)V

    return-void
.end method
