.class public Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;
.super Ljava/lang/Object;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/DngUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamCapability"
.end annotation


# instance fields
.field private final a:Landroid/hardware/camera2/params/BlackLevelPattern;

.field private final b:Ljava/lang/Integer;

.field private final c:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private final d:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private final e:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private final f:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private final g:Ljava/lang/Integer;

.field private final h:Ljava/lang/Byte;

.field private final i:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private final j:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private final k:Ljava/lang/Integer;

.field private final l:Landroid/util/Rational;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/BlackLevelPattern;Ljava/lang/Integer;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/lang/Integer;Ljava/lang/Byte;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/lang/Integer;Landroid/util/Rational;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->a:Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->b:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->c:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->d:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->e:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 7
    iput-object p6, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->f:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 8
    iput-object p7, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->g:Ljava/lang/Integer;

    .line 9
    iput-object p8, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->h:Ljava/lang/Byte;

    .line 10
    iput-object p9, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->i:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 11
    iput-object p10, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->j:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 12
    iput-object p11, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->k:Ljava/lang/Integer;

    .line 13
    iput-object p12, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->l:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public a()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->l:Landroid/util/Rational;

    return-object p0
.end method

.method public b()Landroid/hardware/camera2/params/BlackLevelPattern;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->a:Landroid/hardware/camera2/params/BlackLevelPattern;

    return-object p0
.end method

.method public c()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->e:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public d()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->f:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public e()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public f()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->c:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public g()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->d:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public h()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->i:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public i()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->j:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public j()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public k()Ljava/lang/Byte;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->h:Ljava/lang/Byte;

    return-object p0
.end method

.method public l()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->b:Ljava/lang/Integer;

    return-object p0
.end method
