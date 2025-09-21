.class public Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceConfigCollector"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;

.field private final b:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

.field private final c:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

.field private final d:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->c:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->d:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->d:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->c:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

    return-object p0
.end method

.method public f()Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;

    return-object p0
.end method

.method public g()Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->d:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    return-object p0
.end method

.method public h()Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->c:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

    return-object p0
.end method
