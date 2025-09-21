.class public final Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnexpectedClasspath;
.super Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnexpectedClasspath"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/g;)V

    iput-object p1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnexpectedClasspath;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnexpectedClasspath;->message:Ljava/lang/String;

    return-object p0
.end method
