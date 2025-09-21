.class public final Lj3/e;
.super Ljava/lang/Object;
.source "VisionTextImpl.kt"

# interfaces
.implements Lj3/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/e$a;
    }
.end annotation


# static fields
.field public static final b:Lj3/e$a;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj3/e$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lj3/e;->b:Lj3/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lj3/d;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lm3/w;

    invoke-direct {p0, p1}, Lm3/w;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public b()Lj3/a;
    .locals 3

    .line 1
    new-instance v0, Lj3/b;

    iget-object p0, p0, Lj3/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lj3/b;-><init>(Landroid/content/Context;Lk4/o;ILkotlin/jvm/internal/g;)V

    const-string p0, "RecognizerImpl object -->"

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DeepSkyStar"

    invoke-static {v1, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    sget-object v0, Ll3/g;->a:Ll3/g;

    iget-object p0, p0, Lj3/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Ll3/g;->b(Ll3/g;Landroid/content/Context;Lk4/n;ILjava/lang/Object;)Z

    move-result p0

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isSupported "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
