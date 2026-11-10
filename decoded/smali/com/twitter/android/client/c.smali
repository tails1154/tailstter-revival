.class final Lcom/twitter/android/client/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/client/i;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/i;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "polling_interval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/i;

    const-string v1, "60"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sync_data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/i;

    const-string v1, "polling_interval"

    const-string v2, "60"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->c(I)V

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/i;

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->c(I)V

    goto :goto_1

    :cond_3
    const-string v0, "sound_effects"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/i;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/client/i;->c:Z

    goto :goto_0

    :cond_4
    const-string v0, "font_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/i;

    const-string v1, "font_size"

    const-string v2, "14"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/client/i;->d:I

    goto :goto_0
.end method
