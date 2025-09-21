.class public abstract Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/camerakit/plugin/Plugin$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result;-><init>()V

    return-void
.end method
