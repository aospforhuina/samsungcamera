.class public Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;
.super Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewSurfaceConfig"
.end annotation


# instance fields
.field private final d:Landroid/util/Size;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;-><init>(Landroid/view/Surface;Ljava/lang/Integer;)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->d:Landroid/util/Size;

    .line 3
    iput-object p4, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->e:Ljava/lang/Class;

    .line 4
    iput p5, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->f:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->f:I

    return p0
.end method

.method public e()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->d:Landroid/util/Size;

    return-object p0
.end method

.method public f()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->e:Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->d:Landroid/util/Size;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->e:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "%s, size: %s, source: %s, mirrorMode: %d"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
