.class public Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewCbConfigCollector"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

.field private final b:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method public d()Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method
