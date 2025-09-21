.class public final Ll0/i;
.super Ljava/lang/Object;
.source "GifOptions.java"


# static fields
.field public static final a:Lx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/h<",
            "Lx/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lx/b;->c:Lx/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Lx/h;->f(Ljava/lang/String;Ljava/lang/Object;)Lx/h;

    move-result-object v0

    sput-object v0, Ll0/i;->a:Lx/h;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lx/h;->f(Ljava/lang/String;Ljava/lang/Object;)Lx/h;

    move-result-object v0

    sput-object v0, Ll0/i;->b:Lx/h;

    return-void
.end method
