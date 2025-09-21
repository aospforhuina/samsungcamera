.class public final Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$failing$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snap/camerakit/plugin/Plugin$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->failing(Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;)Lcom/snap/camerakit/plugin/Plugin$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $failure:Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;


# direct methods
.method constructor <init>(Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;)V
    .locals 0

    iput-object p1, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$failing$1;->$failure:Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
    .locals 0

    iget-object p0, p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$failing$1;->$failure:Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;

    return-object p0
.end method
