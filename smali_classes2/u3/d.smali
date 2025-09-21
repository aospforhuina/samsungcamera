.class public Lu3/d;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static b:Lu3/d;


# instance fields
.field private a:Lu3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu3/c;

    invoke-direct {v0}, Lu3/c;-><init>()V

    iput-object v0, p0, Lu3/d;->a:Lu3/k;

    return-void
.end method

.method public static a(Lu3/g;)F
    .locals 1

    invoke-static {}, Lu3/d;->f()Lu3/d;

    move-result-object v0

    iget-object v0, v0, Lu3/d;->a:Lu3/k;

    invoke-virtual {v0, p0}, Lu3/k;->a(Lu3/g;)F

    move-result p0

    return p0
.end method

.method public static b(Lu3/h;)I
    .locals 1

    invoke-static {}, Lu3/d;->f()Lu3/d;

    move-result-object v0

    iget-object v0, v0, Lu3/d;->a:Lu3/k;

    invoke-virtual {v0, p0}, Lu3/k;->b(Lu3/h;)I

    move-result p0

    return p0
.end method

.method public static c(Lu3/l;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lu3/d;->f()Lu3/d;

    move-result-object v0

    iget-object v0, v0, Lu3/d;->a:Lu3/k;

    invoke-virtual {v0, p0}, Lu3/k;->c(Lu3/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lu3/i;)Ljava/util/Map;
    .locals 1

    invoke-static {}, Lu3/d;->f()Lu3/d;

    move-result-object v0

    iget-object v0, v0, Lu3/d;->a:Lu3/k;

    invoke-virtual {v0, p0}, Lu3/k;->d(Lu3/i;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lu3/b;)Z
    .locals 1

    invoke-static {}, Lu3/d;->f()Lu3/d;

    move-result-object v0

    iget-object v0, v0, Lu3/d;->a:Lu3/k;

    invoke-virtual {v0, p0}, Lu3/k;->e(Lu3/b;)Z

    move-result p0

    return p0
.end method

.method private static f()Lu3/d;
    .locals 1

    .line 1
    sget-object v0, Lu3/d;->b:Lu3/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lu3/d;

    invoke-direct {v0}, Lu3/d;-><init>()V

    sput-object v0, Lu3/d;->b:Lu3/d;

    .line 3
    :cond_0
    sget-object v0, Lu3/d;->b:Lu3/d;

    return-object v0
.end method
