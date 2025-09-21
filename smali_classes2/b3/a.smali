.class public final Lb3/a;
.super Ljava/lang/Object;
.source "DeepSky.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/a$a;
    }
.end annotation


# static fields
.field public static final h:Lb3/a$a;

.field private static volatile i:Lb3/a;

.field private static j:Ljava/lang/Boolean;


# instance fields
.field private final a:Lk6/e;

.field private final b:Lk6/e;

.field private final c:Lk6/e;

.field private final d:Lk6/e;

.field private final e:Lk6/e;

.field private final f:Lk6/e;

.field private final g:Lk6/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb3/a$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lb3/a;->h:Lb3/a$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb3/a$f;

    invoke-direct {v0, p1}, Lb3/a$f;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lk6/f;->a(Lu6/a;)Lk6/e;

    move-result-object v0

    iput-object v0, p0, Lb3/a;->a:Lk6/e;

    .line 3
    new-instance v0, Lb3/a$b;

    invoke-direct {v0, p1}, Lb3/a$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lk6/f;->a(Lu6/a;)Lk6/e;

    move-result-object v0

    iput-object v0, p0, Lb3/a;->b:Lk6/e;

    .line 4
    new-instance v0, Lb3/a$d;

    invoke-direct {v0, p1}, Lb3/a$d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lk6/f;->a(Lu6/a;)Lk6/e;

    move-result-object v0

    iput-object v0, p0, Lb3/a;->c:Lk6/e;

    .line 5
    new-instance v0, Lb3/a$h;

    invoke-direct {v0, p1}, Lb3/a$h;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lk6/f;->a(Lu6/a;)Lk6/e;

    move-result-object v0

    iput-object v0, p0, Lb3/a;->d:Lk6/e;

    .line 6
    new-instance v0, Lb3/a$c;

    invoke-direct {v0, p1}, Lb3/a$c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lk6/f;->a(Lu6/a;)Lk6/e;

    move-result-object v0

    iput-object v0, p0, Lb3/a;->e:Lk6/e;

    .line 7
    new-instance v0, Lb3/a$g;

    invoke-direct {v0, p1}, Lb3/a$g;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lk6/f;->a(Lu6/a;)Lk6/e;

    move-result-object v0

    iput-object v0, p0, Lb3/a;->f:Lk6/e;

    .line 8
    new-instance v0, Lb3/a$e;

    invoke-direct {v0, p1}, Lb3/a$e;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lk6/f;->a(Lu6/a;)Lk6/e;

    move-result-object p1

    iput-object p1, p0, Lb3/a;->g:Lk6/e;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lb3/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a()Lb3/a;
    .locals 1

    sget-object v0, Lb3/a;->i:Lb3/a;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lb3/a;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic c(Lb3/a;)V
    .locals 0

    sput-object p0, Lb3/a;->i:Lb3/a;

    return-void
.end method

.method public static final synthetic d(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lb3/a;->j:Ljava/lang/Boolean;

    return-void
.end method

.method private final f()Lj3/c;
    .locals 0

    iget-object p0, p0, Lb3/a;->f:Lk6/e;

    invoke-interface {p0}, Lk6/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj3/c;

    return-object p0
.end method

.method public static final g(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lb3/a;->h:Lb3/a$a;

    invoke-virtual {v0, p0}, Lb3/a$a;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final h(Landroid/content/Context;)Lb3/a;
    .locals 1

    sget-object v0, Lb3/a;->h:Lb3/a$a;

    invoke-virtual {v0, p0}, Lb3/a$a;->c(Landroid/content/Context;)Lb3/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e()Lj3/c;
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/a;->f()Lj3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lb3/a;->f()Lj3/c;

    move-result-object p0

    const-string v1, "VisionTextImpl object -->"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DeepSkyLibrary"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
