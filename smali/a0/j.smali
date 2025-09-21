.class public abstract La0/j;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final a:La0/j;

.field public static final b:La0/j;

.field public static final c:La0/j;

.field public static final d:La0/j;

.field public static final e:La0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La0/j$a;

    invoke-direct {v0}, La0/j$a;-><init>()V

    sput-object v0, La0/j;->a:La0/j;

    .line 2
    new-instance v0, La0/j$b;

    invoke-direct {v0}, La0/j$b;-><init>()V

    sput-object v0, La0/j;->b:La0/j;

    .line 3
    new-instance v0, La0/j$c;

    invoke-direct {v0}, La0/j$c;-><init>()V

    sput-object v0, La0/j;->c:La0/j;

    .line 4
    new-instance v0, La0/j$d;

    invoke-direct {v0}, La0/j$d;-><init>()V

    sput-object v0, La0/j;->d:La0/j;

    .line 5
    new-instance v0, La0/j$e;

    invoke-direct {v0}, La0/j$e;-><init>()V

    sput-object v0, La0/j;->e:La0/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lx/a;)Z
.end method

.method public abstract d(ZLx/a;Lx/c;)Z
.end method
