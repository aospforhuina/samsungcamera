.class public final Lj6/e;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/ClassLoader;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lj6/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lj6/e;->b:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lj6/e;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 3

    new-instance v0, Lj6/d;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lj6/e;->b:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lj6/e;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lj6/d;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/Context;)V

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lj6/e;->b:Ljava/lang/ClassLoader;

    return-object p0
.end method
