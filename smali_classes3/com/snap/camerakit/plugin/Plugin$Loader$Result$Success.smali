.class public final Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;
.super Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final plugin:Lcom/snap/camerakit/plugin/Plugin;


# direct methods
.method public constructor <init>(Lcom/snap/camerakit/plugin/Plugin;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result;-><init>(Lkotlin/jvm/internal/g;)V

    iput-object p1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;->plugin:Lcom/snap/camerakit/plugin/Plugin;

    return-void
.end method


# virtual methods
.method public final getPlugin()Lcom/snap/camerakit/plugin/Plugin;
    .locals 0

    iget-object p0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;->plugin:Lcom/snap/camerakit/plugin/Plugin;

    return-object p0
.end method
