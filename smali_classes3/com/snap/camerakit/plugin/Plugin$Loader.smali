.class public interface abstract Lcom/snap/camerakit/plugin/Plugin$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/camerakit/plugin/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Loader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snap/camerakit/plugin/Plugin$Loader$Result;,
        Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->$$INSTANCE:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    sput-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader;->Companion:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    return-void
.end method

.method public static failing(Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 1

    sget-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader;->Companion:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    invoke-virtual {v0, p0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->failing(Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/content/Context;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 1

    sget-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader;->Companion:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    invoke-virtual {v0, p0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from(Landroid/content/Context;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/content/Context;Ljava/lang/ClassLoader;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 1

    sget-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader;->Companion:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from(Landroid/content/Context;Ljava/lang/ClassLoader;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/content/Context;Ljava/lang/String;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 1

    sget-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader;->Companion:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from(Landroid/content/Context;Ljava/lang/String;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/snap/camerakit/plugin/Plugin$Loader;"
        }
    .end annotation

    sget-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader;->Companion:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract load()Lcom/snap/camerakit/plugin/Plugin$Loader$Result;
.end method
