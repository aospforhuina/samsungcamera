.class public Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;
.super Ljava/lang/Object;
.source "AeInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callback/AeInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AeInfo"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->a:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->b:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 6
    iput-object p4, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public c()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public d()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->a:Ljava/lang/Integer;

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->b:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->d:Ljava/lang/Integer;

    return-void
.end method

.method public f(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->d:Ljava/lang/Integer;

    return-void
.end method

.method public g(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->a:Ljava/lang/Integer;

    return-void
.end method

.method public h([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public i(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->b:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->a:Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->b:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2
    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->d:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "AeMode(%d), AeState(%d), AeRegions(%s), AeExtraMode(%d)"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
