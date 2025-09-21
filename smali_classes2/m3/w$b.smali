.class final Lm3/w$b;
.super Ljava/lang/Object;
.source "VisionTextDrawHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lm3/w;


# direct methods
.method private constructor <init>(Lm3/w;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lm3/w$b;->a:Lm3/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "VisionTextDrawHelperImpl"

    const-string p1, "create ClearMultiTouch"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lm3/w;Lm3/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm3/w$b;-><init>(Lm3/w;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "VisionTextDrawHelperImpl"

    const-string v1, "ClearMultiTouch"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lm3/w$b;->a:Lm3/w;

    invoke-virtual {p0}, Lm3/w;->j()V

    return-void
.end method
