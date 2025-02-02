FROM gitpod/workspace-postgres
USER gitpod

# Install Ruby version 3.1.0 and set it as default
RUN _ruby_version=ruby-3.1.0 \
    && printf "rvm_gems_path=/home/gitpod/.rvm\n" > ~/.rvmrc \
    && bash -lc "rvm reinstall ${_ruby_version} && \
                 rvm use ${_ruby_version} --default" \
    && printf "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc \
    && printf "{ rvm use \$(rvm current); } >/dev/null 2>&1\n" >> "$HOME/.bashrc.d/70-ruby"

# Install protobuf requirements
RUN sudo apt install -y protobuf-compiler
