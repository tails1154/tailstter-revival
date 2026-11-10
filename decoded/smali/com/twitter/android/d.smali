.class final Lcom/twitter/android/d;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/SearchActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SearchActivity;Lcom/twitter/android/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/d;-><init>(Lcom/twitter/android/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/SearchActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/SearchActivity;

    iget-object v1, v1, Lcom/twitter/android/SearchActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/SearchActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchActivity;->d(I)V

    :cond_0
    return-void
.end method
