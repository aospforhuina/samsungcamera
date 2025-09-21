.class public final Ld1/e;
.super Lb1/h;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb1/h<",
        "Ld1/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final I:Lb1/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Lb1/v;La1/d;La1/j;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lb1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILb1/e;La1/d;La1/j;)V

    iput-object p4, p0, Ld1/e;->I:Lb1/v;

    return-void
.end method


# virtual methods
.method protected final D()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object p0
.end method

.method protected final E()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.common.telemetry.service.START"

    return-object p0
.end method

.method protected final H()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k()I
    .locals 0

    const p0, 0xc1fa340

    return p0
.end method

.method protected final synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    .line 1
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ld1/a;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Ld1/a;

    goto :goto_0

    :cond_1
    new-instance p0, Ld1/a;

    invoke-direct {p0, p1}, Ld1/a;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final u()[Ly0/c;
    .locals 0

    sget-object p0, Li1/d;->b:[Ly0/c;

    return-object p0
.end method

.method protected final z()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Ld1/e;->I:Lb1/v;

    invoke-virtual {p0}, Lb1/v;->d()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
